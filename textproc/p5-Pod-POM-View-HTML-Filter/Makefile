# Created by: Anton Berezin <tobez@FreeBSD.org>
# $FreeBSD: textproc/p5-Pod-POM-View-HTML-Filter/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	Pod-POM-View-HTML-Filter
PORTVERSION=	0.09
CATEGORIES=	textproc perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Use filters on sections of your pod documents

BUILD_DEPENDS=	p5-Pod-POM>=0:${PORTSDIR}/textproc/p5-Pod-POM \
		p5-Syntax-Highlight-Shell>=0:${PORTSDIR}/www/p5-Syntax-Highlight-Shell \
		perltidy>=0:${PORTSDIR}/devel/perltidy \
		p5-Syntax-Highlight-HTML>=0:${PORTSDIR}/www/p5-Syntax-Highlight-HTML
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=	Pod::POM::View::HTML::Filter.3

.include <bsd.port.mk>
