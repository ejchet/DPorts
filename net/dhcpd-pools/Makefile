# Created by: Ryan Steinmetz <zi@FreeBSD.org>
# $FreeBSD: net/dhcpd-pools/Makefile 317906 2013-05-11 19:15:29Z zi $

PORTNAME=	dhcpd-pools
PORTVERSION=	2.23
CATEGORIES=	net
MASTER_SITES=	SF/${PORTNAME}

MAINTAINER=	zi@FreeBSD.org
COMMENT=	A tool to analyze isc-dhcp pool usage based on leases

LICENSE=	BSD
LICENSE_FILE=	${WRKSRC}/COPYING

BUILD_DEPENDS=	${LOCALBASE}/include/uthash.h:${PORTSDIR}/devel/uthash

USES=		charsetfix
USE_XZ=		yes
GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--with-dhcpd-conf=${LOCALBASE}/etc/dhcpd.conf \
		--with-dhcpd-leases=/var/db/dhcpd/dhcpd.leases \
		--with-uthash=${LOCALBASE}/include
MAKE_JOBS_UNSAFE=	yes

PLIST_FILES=	bin/dhcpd-pools
PORTDATA=	dhcpd-pools.cgi snmptest.pl

MAN1=		dhcpd-pools.1

post-patch:
	@${REINPLACE_CMD} -e '/features.h/d' ${WRKSRC}/src/getdata.c

.include <bsd.port.mk>
