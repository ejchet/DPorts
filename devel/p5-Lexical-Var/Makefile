# Created by: Steve Wills <swills@FreeBSD.org>
# $FreeBSD: devel/p5-Lexical-Var/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	Lexical-Var
PORTVERSION=	0.007
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Perl module for static variables without namespace pollution

USES=		perl5
USE_PERL5=	configure

MAN3=	Lexical::Sub.3 Lexical::Var.3

post-patch:
	@${REINPLACE_CMD} -e '/Lexical::SealRequireHints/d' ${WRKSRC}/Build.PL ${WRKSRC}/lib/Lexical/Var.pm

.include <bsd.port.mk>
