# $FreeBSD: devel/p5-Data-ParseBinary/Makefile 324224 2013-08-04 12:39:45Z az $

PORTNAME=	Data-ParseBinary
PORTVERSION=	0.31
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:SEMUELF
PKGNAMEPREFIX=	p5-

MAINTAINER=	az@FreeBSD.org
COMMENT=	Yet Another parser for binary structures

BUILD_DEPENDS=	p5-Math-BigInt>=1.993:${PORTSDIR}/math/p5-Math-BigInt

TEST_DEPENDS=	p5-Test-Simple>=0.96:${PORTSDIR}/devel/p5-Test-Simple

USES=		perl5
USE_PERL5=	configure

MAN3=	Data::ParseBinary::Graphics::WMF.3 \
	Data::ParseBinary::Graphics::EMF.3 \
	Data::ParseBinary.3 \
	Data::ParseBinary::Graphics::BMP.3 \
	Data::ParseBinary::Executable::ELF32.3 \
	Data::ParseBinary::Executable::PE32.3 \
	Data::ParseBinary::Data::Cap.3 \
	Data::ParseBinary::Data::Netflow.3 \
	Data::ParseBinary::Graphics::PNG.3 \
	Data::ParseBinary::FileSystem::MBR.3

.include <bsd.port.mk>
