# Created by: Dmitry Frolov <frol@nov.net>
# $FreeBSD: sysutils/ipmitool/Makefile 317682 2013-05-08 15:36:00Z sunpoet $

PORTNAME=	ipmitool
PORTVERSION=	1.8.12
PORTREVISION=	3
CATEGORIES=	sysutils
MASTER_SITES=	SF

MAINTAINER=	spolyack@collaborativefusion.com
COMMENT=	CLI to manage IPMI systems

USE_BZIP2=	yes
USE_GMAKE=	yes
USE_OPENSSL=	yes
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+=--enable-intf-lan --enable-intf-lanplus \
		--disable-intf-imb --disable-intf-lipmi --disable-intf-bmc
PLIST_FILES=	bin/ipmitool sbin/ipmievd share/ipmitool/oem_ibm_sel_map \
		${PERIODIC_DIR}/400.status-ipmi
PLIST_DIRS=	share/ipmitool
PLIST_DIRSTRY=	${PERIODIC_DIR} etc/periodic
SUB_FILES=	status-ipmi.sh
PORTDOCS=	AUTHORS COPYING ChangeLog README

MAN1+=		${PORTNAME}.1
MAN8+=		ipmievd.8

PERIODIC_DIR=	etc/periodic/daily

OPTIONS_DEFINE=	FREEIPMI
FREEIPMI_DESC=	Enable support for freeipmi

.if defined(WITH_DEBUG)
CFLAGS+=	-ggdb -Wall
.endif

.if exists(/usr/include/sys/ipmi.h)
CONFIGURE_ARGS+=	--enable-intf-open
.else
CONFIGURE_ARGS+=	--disable-intf-open
.endif

.include <bsd.port.options.mk>

.if empty(PORT_OPTIONS:MDOCS)
EXTRA_PATCHES+=	${PATCHDIR}/extra-patch-Makefile.in
.endif

.if ${PORT_OPTIONS:MFREEIPMI}
LIB_DEPENDS+=	freeipmi:${PORTSDIR}/sysutils/freeipmi
CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib
CONFIGURE_ARGS+=	--enable-intf-free
.else
CONFIGURE_ARGS+=	--disable-intf-free
.endif

post-install:
	@${MKDIR} ${PREFIX}/${PERIODIC_DIR}
	@${INSTALL_SCRIPT} ${WRKDIR}/status-ipmi.sh ${PREFIX}/${PERIODIC_DIR}/400.status-ipmi

.include <bsd.port.mk>
