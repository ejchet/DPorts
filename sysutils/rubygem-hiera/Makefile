# Created by: Greg Larkin <glarkin@FreeBSD.org>
# $FreeBSD: ports/sysutils/rubygem-hiera/Makefile,v 1.7 2013/01/17 22:45:37 svnexp Exp $

PORTNAME=	hiera
PORTVERSION=	1.1.2
CATEGORIES=	sysutils rubygems
MASTER_SITES=	RG

MAINTAINER=	glarkin@FreeBSD.org
COMMENT=	A pluggable data store for hierarchical data

RUN_DEPENDS=	${PKGNAMEPREFIX}json_pure>=0:${PORTSDIR}/devel/rubygem-json_pure

USE_RUBY=	yes
USE_RUBYGEMS=	yes
RUBYGEM_AUTOPLIST=	yes
PLIST_FILES=	bin/hiera
HIERA_DBDIR=	/var/db/hiera

post-install:
	@${REINPLACE_CMD} "s!/etc/hiera.yaml!${PREFIX}/etc/hiera.yaml!" \
		${PREFIX}/${GEM_LIB_DIR}/bin/hiera \
		${PREFIX}/${GEM_LIB_DIR}/lib/hiera.rb \
		${PREFIX}/${GEM_LIB_DIR}/spec/unit/hiera_spec.rb
	@${REINPLACE_CMD} "s!/var/lib/hiera!${HIERA_DBDIR}!" \
		${PREFIX}/${GEM_LIB_DIR}/lib/hiera/backend.rb \
		${PREFIX}/${GEM_LIB_DIR}/spec/unit/backend_spec.rb
	@${FIND} ${PREFIX}/${GEM_LIB_DIR} -name \*.bak -delete
	@${MKDIR} ${HIERA_DBDIR}
	@${ECHO_CMD} '@cwd /' >> ${TMPPLIST}
	@${ECHO_CMD} "@exec ${MKDIR} ${HIERA_DBDIR}" >> ${TMPPLIST}
	@${ECHO_CMD} "@unexec ${RMDIR} \"%D/${HIERA_DBDIR}\" 2>/dev/null || true" >> ${TMPPLIST}
	@${ECHO_CMD} '@cwd' >> ${TMPPLIST}

.include <bsd.port.mk>
