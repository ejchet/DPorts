# New ports collection makefile for:	hope
# Date created:				24 September 2001
# Whom:					Lev Serebryakov <lev@serebryakov.spb.ru>
#
# $FreeBSD: lang/hope/Makefile 317899 2013-05-11 17:58:55Z hrs $
#

PORTNAME=	hope
PORTVERSION=	1.1
CATEGORIES=	lang
MASTER_SITES=	http://www.soi.city.ac.uk/~ross/Hope/
DISTNAME=	${PORTNAME}

MAINTAINER=	lev@FreeBSD.org
COMMENT=	Hope is lazy interpreter for HOPE applicative language

.if defined(WITH_DOCS)
USE_TEX=	latex:build
BUILD_DEPENDS+= latex2html:${PORTSDIR}/textproc/latex2html
MAKE_ARGS+=	WITH_DOCS=yes
.else
NOPORTDOCS=	yes
.endif

GNU_CONFIGURE=	yes
USE_GMAKE=	yes

MAN1=		hope.1

.include <bsd.port.pre.mk>

pre-fetch:
.if !defined(WITH_DOCS)
	@${ECHO} ""
	@${ECHO} "      If you want to build and install documentation"
	@${ECHO} "      you should use WITH_DOCS build option"
	@${ECHO} ""
	@${ECHO} "      Documentation is not builded by default because"
	@${ECHO} "      it needs latex and latex2html"
	@${ECHO} ""
.endif

.include <bsd.port.post.mk>
