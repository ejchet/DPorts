# Created by: Sergey Skvortsov <skv@protey.ru>
# $FreeBSD: textproc/p5-PPIx-Utilities/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	PPIx-Utilities
PORTVERSION=	1.001000
CATEGORIES=	textproc perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:ELLIOTJS
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Extensions to PPI

RUN_DEPENDS=	p5-Exception-Class>=1.23:${PORTSDIR}/devel/p5-Exception-Class \
		p5-PPI>=1.208:${PORTSDIR}/textproc/p5-PPI \
		p5-Readonly>=1.03:${PORTSDIR}/devel/p5-Readonly \
		p5-Task-Weaken>=0:${PORTSDIR}/devel/p5-Task-Weaken
BUILD_DEPENDS:=	${RUN_DEPENDS}
TEST_DEPENDS=	p5-Test-Deep>=0:${PORTSDIR}/devel/p5-Test-Deep

USES=		perl5
USE_PERL5=	modbuild

MAN3=		PPIx::Utilities.3 PPIx::Utilities::Exception::Bug.3 \
		PPIx::Utilities::Node.3 PPIx::Utilities::Statement.3

.include <bsd.port.mk>
