# New ports collection makefile for:	p5-Eval-LineNumbers
# Date created:		2012-03-08
# Whom:			Sunpoet Po-Chuan Hsieh <sunpoet@FreeBSD.org>
#
# $FreeBSD: ports/devel/p5-Eval-LineNumbers/Makefile,v 1.2 2012/11/17 05:56:14 svnexp Exp $
#

PORTNAME=	Eval-LineNumbers
PORTVERSION=	0.31
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:MUIR/modules
PKGNAMEPREFIX=	p5-

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	Add line numbers to hereis blocks that contain perl source code

PERL_CONFIGURE=	yes

MAN3=		Eval::LineNumbers.3

post-patch:
	@${REINPLACE_CMD} -e 's|Eval-LineNumbers|Eval::LineNumbers|' ${WRKSRC}/Makefile.PL

.include <bsd.port.mk>
