# Created by: Cristiano Rolim Pereira <cristianorolim@hotmail.com>
# $FreeBSD: sysutils/rsyslog6-relp/Makefile 316355 2013-04-23 14:20:25Z bapt $

COMMENT=	RELP input/output module for rsyslog
MASTERDIR=	${.CURDIR}/../rsyslog6

MNAME=	relp
LIB_DEPENDS=	relp.0:${PORTSDIR}/devel/librelp

USES=		pkgconfig

CONFIGURE_ARGS+=--enable-relp

PLIST_FILES+=	lib/rsyslog/imrelp.la \
		lib/rsyslog/imrelp.so \
		lib/rsyslog/omrelp.la \
		lib/rsyslog/omrelp.so

do-install:
	@${INSTALL_PROGRAM} \
		${WRKSRC}/plugins/omrelp/.libs/omrelp.so ${PREFIX}/lib/rsyslog
	@${INSTALL_DATA} \
		${WRKSRC}/plugins/omrelp/omrelp.la ${PREFIX}/lib/rsyslog
	@${INSTALL_PROGRAM} \
		${WRKSRC}/plugins/imrelp/.libs/imrelp.so ${PREFIX}/lib/rsyslog
	@${INSTALL_DATA} \
		${WRKSRC}/plugins/imrelp/imrelp.la ${PREFIX}/lib/rsyslog
.include "${MASTERDIR}/Makefile"
