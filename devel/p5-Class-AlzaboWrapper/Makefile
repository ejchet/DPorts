# Created by: mat
# $FreeBSD: devel/p5-Class-AlzaboWrapper/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	Class-AlzaboWrapper
PORTVERSION=	0.14
CATEGORIES=	devel databases perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Higher level wrapper around Alzabo Row and Table objects

BUILD_DEPENDS=	p5-Params-Validate>=0:${PORTSDIR}/devel/p5-Params-Validate \
		p5-Exception-Class>=0:${PORTSDIR}/devel/p5-Exception-Class \
		p5-Alzabo>=0:${PORTSDIR}/devel/p5-Alzabo
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	modbuild

MAN3=		Class::AlzaboWrapper.3 Class::AlzaboWrapper::Cursor.3

.if !defined(NOPORTDOCS)
PORTDOCS=	Changes README

post-install:
	@${MKDIR} ${DOCSDIR}
	@${INSTALL_DATA} ${PORTDOCS:S|^|${WRKSRC}/|} ${DOCSDIR}
	@${ECHO_MSG} "===> Documentation installed in ${DOCSDIR}."
.endif

.include <bsd.port.mk>
