# Created by: Russell Jackson <raj@csub.edu>
# $FreeBSD: sysutils/mcollective/Makefile 321721 2013-06-25 02:57:53Z swills $

PORTNAME=	mcollective
PORTVERSION=	2.2.4
CATEGORIES=	sysutils
MASTER_SITES=	http://downloads.puppetlabs.com/${PORTNAME}/
EXTRACT_SUFX=	.tgz

MAINTAINER=	swills@FreeBSD.org
COMMENT=	A modern scalable datacenter orchestration framework

RUN_DEPENDS=	rubygem-stomp>=0:${PORTSDIR}/devel/rubygem-stomp

NO_BUILD=	yes
USE_RUBY=	yes
USE_RC_SUBR=	mcollectived

RUBY_SHEBANG_FILES=	bin/mcollectived bin/mco bin/mc-call-agent

# don't make .bak files
REINPLACE_ARGS=	-i ""

SCRIPTS=	mco mc-call-agent

SUB_LIST+=	RUBY=${RUBY}

do-patch:
	@${REINPLACE_CMD} -e "s|/etc/mcollective|${ETCDIR}|" \
	    ${WRKSRC}/bin/mcollectived \
		${WRKSRC}/etc/server.cfg.dist \
		${WRKSRC}/etc/client.cfg.dist \
		${WRKSRC}/lib/mcollective/config.rb \
		${WRKSRC}/lib/mcollective/util.rb \
		${WRKSRC}/lib/mcollective/rpc.rb
	@${REINPLACE_CMD} -e "s|/usr/libexec/mcollective|${PREFIX}/share|" \
	    ${WRKSRC}/etc/server.cfg.dist \
	    ${WRKSRC}/etc/client.cfg.dist

do-install:
	@(cd ${WRKSRC}/lib && ${COPYTREE_SHARE} \* ${RUBY_SITELIBDIR})
	${MKDIR} ${DATADIR}
	@(cd ${WRKSRC}/plugins/mcollective && ${COPYTREE_SHARE} \* ${DATADIR})

.for script in ${SCRIPTS}
	${INSTALL_SCRIPT} ${WRKSRC}/bin/${script} ${PREFIX}/bin/
.endfor
	${INSTALL_SCRIPT} ${WRKSRC}/bin/mcollectived ${PREFIX}/sbin/mcollectived

	${MKDIR} ${ETCDIR}
	${INSTALL_DATA} ${WRKSRC}/etc/client.cfg.dist ${ETCDIR}
	${INSTALL_DATA} ${WRKSRC}/etc/server.cfg.dist ${ETCDIR}

.if !defined(NOPORTDOCS)
	${MKDIR} ${DOCSDIR}
	(cd ${WRKSRC}/doc && ${COPYTREE_SHARE} \* ${DOCSDIR})
.endif

.include <bsd.port.mk>
