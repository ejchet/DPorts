# Created by: Wen Heping <wenheping@gmail.com>
# $FreeBSD: science/p5-Chemistry-MacroMol/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	Chemistry-MacroMol
PORTVERSION=	0.06
CATEGORIES=	science perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Perl toolkit to describe macromolecules

BUILD_DEPENDS=	p5-Chemistry-Mol>=0.37:${PORTSDIR}/science/p5-Chemistry-Mol
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=	Chemistry::MacroMol.3 Chemistry::Domain.3

.include <bsd.port.mk>
