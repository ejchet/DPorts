# $FreeBSD: ports/net-mgmt/pancho/Makefile,v 1.30 2012/12/12 21:45:13 svnexp Exp $

PORTNAME=	pancho
PORTVERSION=	9.3.9
CATEGORIES=	net-mgmt
MASTER_SITES=	http://www.pancho.org/archives/pancho/ \
		http://200ok.org/distfiles/pancho/
DISTNAME=	pancho-v${PORTVERSION}

MAINTAINER=	ecu@200ok.org
COMMENT=	Network devices management tool using TFTP and SNMP

RUN_DEPENDS=	p5-Net-SNMP>=0:${PORTSDIR}/net-mgmt/p5-Net-SNMP \
		p5-Config-IniFiles>=0:${PORTSDIR}/devel/p5-Config-IniFiles \
		p5-Parallel-ForkManager>=0:${PORTSDIR}/devel/p5-Parallel-ForkManager

WRKSRC=		${WRKDIR}/Pancho-${PORTVERSION}
PERL_CONFIGURE=	YES

MAN1=		pancho.1

DOCS=		README README.plugins Plugin.sample

post-patch:
	@${MV} ${WRKSRC}/lib/Pancho/Plugins/README ${WRKSRC}/README.plugins
	@${MV} ${WRKSRC}/lib/Pancho/Plugins/Plugin.sample ${WRKSRC}/

post-install:
	@${INSTALL_DATA} ${WRKSRC}/samples/sample.conf ${PREFIX}/etc/pancho.conf.sample
.if !defined(NOPORTDOCS)
	@${MKDIR} ${DOCSDIR}
	cd ${WRKSRC} && ${INSTALL_DATA} ${DOCS} ${DOCSDIR}
.endif

.include <bsd.port.mk>
