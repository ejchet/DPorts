# Created by: Anton Berezin <tobez@FreeBSD.org>
# $FreeBSD: textproc/p5-Template-Declare/Makefile 324276 2013-08-05 15:05:29Z az $

PORTNAME=	Template-Declare
PORTVERSION=	0.46
CATEGORIES=	textproc perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	tobez@FreeBSD.org
COMMENT=	Perlish declarative templates

COMMON_DEPENDS=	p5-Test-Warn>=0.11:${PORTSDIR}/devel/p5-Test-Warn \
		p5-Class-Accessor>0:${PORTSDIR}/devel/p5-Class-Accessor \
		p5-Class-Data-Inheritable>0:${PORTSDIR}/devel/p5-Class-Data-Inheritable \
		p5-HTML-Lint>0:${PORTSDIR}/www/p5-HTML-Lint \
		p5-Class-ISA>0:${PORTSDIR}/devel/p5-Class-ISA \
		p5-String-BufferStack>=1.10:${PORTSDIR}/textproc/p5-String-BufferStack
BUILD_DEPENDS=	${COMMON_DEPENDS}
RUN_DEPENDS=	${COMMON_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=	Template::Declare.3 \
	Template::Declare::Buffer.3 \
	Template::Declare::TagSet.3 \
	Template::Declare::TagSet::HTML.3 \
	Template::Declare::TagSet::RDF.3 \
	Template::Declare::TagSet::RDF::EM.3 \
	Template::Declare::TagSet::XUL.3 \
	Template::Declare::Tags.3

.include <bsd.port.mk>
