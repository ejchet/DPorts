# Created by: Andrey Chernov <ache@FreeBSD.org>
# $FreeBSD: www/p5-HTML-SimpleLinkExtor/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	HTML-SimpleLinkExtor
PORTVERSION=	1.25
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	This is a simple HTML link extractor

BUILD_DEPENDS=	p5-HTML-Parser>=1.28:${PORTSDIR}/www/p5-HTML-Parser \
		p5-URI>=1.09:${PORTSDIR}/net/p5-URI \
		p5-libwww>=0:${PORTSDIR}/www/p5-libwww
RUN_DEPENDS=	p5-HTML-Parser>=1.28:${PORTSDIR}/www/p5-HTML-Parser \
		p5-URI>=1.09:${PORTSDIR}/net/p5-URI \
		p5-libwww>=0:${PORTSDIR}/www/p5-libwww
TEST_DEPENDS=	p5-Test-Output>=0:${PORTSDIR}/devel/p5-Test-Output

USES=		perl5
USE_PERL5=	configure

MAN1=		linktractor.1
MAN3=		HTML::SimpleLinkExtor.3

.include <bsd.port.pre.mk>

.if ${PERL_LEVEL} < 501400
TEST_DEPENDS+=	p5-Test-Simple>=0.96:${PORTSDIR}/devel/p5-Test-Simple
.endif

.include <bsd.port.post.mk>
