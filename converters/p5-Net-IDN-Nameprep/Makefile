# Created by: Timur Bakeyev <bat@cpan.org>
# $FreeBSD: ports/converters/p5-Net-IDN-Nameprep/Makefile,v 1.6 2012/11/17 05:55:04 svnexp Exp $

PORTNAME=	Net-IDN-Nameprep
PORTVERSION=	1.101
CATEGORIES=	converters perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	5u623l20@gmail.com
COMMENT=	Normalization of domain names (Nameprep, RFC 3491)

RUN_DEPENDS=	p5-Unicode-Stringprep>=0:${PORTSDIR}/converters/p5-Unicode-Stringprep
BUILD_DEPENDS:=	${RUN_DEPENDS} \
		p5-Test-NoWarnings>=0:${PORTSDIR}/devel/p5-Test-NoWarnings

PERL_MODBUILD=	yes

MAN3=		Net::IDN::Nameprep.3

.include <bsd.port.mk>
