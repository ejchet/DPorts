# Created by: @BABOLO <.@babolo.ru>
# $FreeBSD: net-mgmt/flow-tools/Makefile 319210 2013-05-27 11:22:21Z rene $

PORTNAME=	flow-tools
PORTVERSION=	0.68
PORTREVISION=	7
CATEGORIES=	net-mgmt
MASTER_SITES=	ftp://ftp.eng.oar.net/pub/flow-tools/

MAINTAINER=	5u623l20@gmail.com
COMMENT=	Suite of tools and library to work with netflow data

PORTSCOUT=	skipv:0.411

OPTIONS_DEFINE=	MYSQL OPENSSL PGSQL

CONFLICTS=	flow-tools-ng-[0-9]*

USE_GCC=	any
USE_PYTHON_RUN=	yes
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+=--localstatedir="${PREFIX}"

MAN1=	flow-capture.1 flow-cat.1 flow-dscan.1 flow-expire.1	\
	flow-export.1 flow-fanout.1 flow-filter.1 flow-gen.1	\
	flow-header.1 flow-import.1 flow-mask.1 flow-merge.1	\
	flow-nfilter.1 flow-print.1 flow-receive.1		\
	flow-report.1 flow-send.1 flow-split.1 flow-stat.1	\
	flow-tag.1 flow-tools.1	flow-tools-examples.1 		\
	flow-xlate.1 flow-rptfmt.1 flow-log2rrd.1 flow-rpt2rrd.1

SUB_FILES=	pkg-install pkg-deinstall
SUB_LIST=	FLOW_CAPTURE_SPOOL="${FLOW_CAPTURE_SPOOL}" \
		FLOW_CAPTURE_USER="${FLOW_CAPTURE_USER}" \
		FLOW_CAPTURE_GROUP="${FLOW_CAPTURE_GROUP}" \
		FLOW_CAPTURE_UID="${FLOW_CAPTURE_UID}" \
		FLOW_CAPTURE_GID="${FLOW_CAPTURE_GID}" \
		FLOW_CAPTURE_PIDDIR="${FLOW_CAPTURE_PIDDIR}"
USE_RC_SUBR=	flow_capture flow_fanout

VARDIR?=		/var
FLOW_CAPTURE_SPOOL=	${VARDIR}/db/flows
FLOW_CAPTURE_USER=	flowtools
FLOW_CAPTURE_GROUP=	flowtools
FLOW_CAPTURE_UID=	174
FLOW_CAPTURE_GID=	174
FLOW_CAPTURE_PIDDIR=	${VARDIR}/run/flow-capture

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MPGSQL}
CONFIGURE_ARGS+=--with-pgsql="${PREFIX}"
USE_PGSQL=	yes
.endif

.if ${PORT_OPTIONS:MMYSQL}
CONFIGURE_ARGS+=--with-mysql="${PREFIX}"
USE_MYSQL=	yes
.endif

.if ${PORT_OPTIONS:MOPENSSL}
CONFIGURE_ARGS+=--with-openssl="${OPENSSLBASE}"
.endif

post-patch:
	${REINPLACE_CMD}\
	 -e 's|@localstatedir@/sym/|${PREFIX}/share/flow-tools/|' \
	 -e 's|@localstatedir@/cfg/|${PREFIX}/etc/flow-tools/|' \
	  ${WRKSRC}/docs/flow-*.1.in ${WRKSRC}/docs/flow-*.html.in

pre-su-install:
	@${SETENV} ${SCRIPTS_ENV} \
		${SH} ${PKGINSTALL} ${PKGNAME} PRE-INSTALL

post-install:
.for I in ${MAN1}
	${INSTALL_MAN} ${WRKSRC}/docs/${I} ${PREFIX}/man/man1/
.endfor
	@${SETENV} ${SCRIPTS_ENV} \
		${SH} ${PKGINSTALL} ${PKGNAME} POST-INSTALL

.include <bsd.port.mk>
