# $FreeBSD: www/flood/Makefile 322372 2013-07-06 09:04:54Z ohauer $

PORTNAME=	flood
PORTVERSION=	0.20041105
PORTREVISION=	7
CATEGORIES=	www
MASTER_SITES=	http://dist.bsdlab.org/
DISTNAME=	httpd-test_20041105052051

MAINTAINER=	kuriyama@FreeBSD.org
COMMENT=	Profile-driven HTTP load tester

LIB_DEPENDS=	expat.6:${PORTSDIR}/textproc/expat2 \
		apr-1:${PORTSDIR}/devel/apr1

WRKSRC=		${WRKDIR}/httpd-test/flood
USE_AUTOTOOLS=	autoconf libtool:env
CONFIGURE_ARGS=	--disable-shared \
	--with-apr=${LOCALBASE}/bin/apr-1-config \
	--with-apr-util=${LOCALBASE}/bin/apu-1-config
LDFLAGS+=	-L${PREFIX}/lib
USES=		gmake iconv

EX_SCRIPTS=	analyze-relative analyze-relative-ramp
EX_DATA=	flood.dtd relative-averages-time.awk round-robin-dynamic.xml \
		round-robin-example.xml round-robin-keepalive.xml \
		round-robin-relative-reports.xml round-robin-ssl.xml \
		round-robin-timed.xml round-robin.xml

post-install:
	@${MKDIR} ${EXAMPLESDIR}
.for f in ${EX_SCRIPTS}
	@${INSTALL_SCRIPT} ${WRKSRC}/examples/$f ${EXAMPLESDIR}
.endfor
.for f in ${EX_DATA}
	@${INSTALL_DATA} ${WRKSRC}/examples/$f ${EXAMPLESDIR}
.endfor
.if !defined(NOPORTDOCS)
	@${MKDIR} ${DOCSDIR}/docbook
	@${INSTALL_DATA} ${WRKSRC}/docs/README ${DOCSDIR}
	@${INSTALL_DATA} ${WRKSRC}/docs/docbook/[Mf]* ${DOCSDIR}/docbook
.endif

ANONCVS=	cvs -d :pserver:anoncvs@cvs.apache.org:/home/cvspublic

maint-checkout:
	${ANONCVS} co httpd-test/flood

# http://cvs.apache.org/snapshots/httpd-test/

.include <bsd.port.mk>
