# Created by: Sergey Skvortsov <skv@protey.ru>
# $FreeBSD: graphics/p5-SWF-File/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	SWF-File
PORTVERSION=	0.42
PORTREVISION=	1
PORTEPOCH=	1
CATEGORIES=	graphics www perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Manipulating Flash movie (SWF) files

RUN_DEPENDS=	p5-Data-TemporaryBag>=0:${PORTSDIR}/devel/p5-Data-TemporaryBag
BUILD_DEPENDS=	p5-Data-TemporaryBag>=0:${PORTSDIR}/devel/p5-Data-TemporaryBag

USES=		perl5
USE_PERL5=	configure
USE_DOS2UNIX=	yes

MAN3=		SWF::BinStream.3 SWF::BinStream::Codec.3 \
		SWF::BinStream::Codec::Zlib.3 SWF::BinStream::File.3 \
		SWF::Element.3 SWF::File.3 SWF::Parser.3

post-configure:
	@${PERL} -pi -e 's/^(POD2MAN_EXE.*)$$/\1 --lax/;' ${WRKSRC}/Makefile

.include <bsd.port.mk>
