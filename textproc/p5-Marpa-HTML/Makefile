# Created by: Sunpoet Po-Chuan Hsieh <sunpoet@FreeBSD.org>
# $FreeBSD: textproc/p5-Marpa-HTML/Makefile 319033 2013-05-25 08:13:20Z sunpoet $

PORTNAME=	Marpa-HTML
PORTVERSION=	0.112
CATEGORIES=	textproc lang perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:JKEGL
PKGNAMEPREFIX=	p5-
DISTNAME=	${PORTNAME}-${PORTVERSION}000

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	High-level HTML Parser

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

BUILD_DEPENDS=	p5-HTML-Parser>=3.64:${PORTSDIR}/www/p5-HTML-Parser \
		p5-Marpa-PP>=0.012:${PORTSDIR}/lang/p5-Marpa-PP \
		p5-Marpa-XS>=0.026:${PORTSDIR}/lang/p5-Marpa-XS
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	yes

MAN1=		html_fmt.1 \
		html_score.1
MAN3=		Marpa::HTML.3 \
		Marpa::HTML::Support.3

post-patch:
	@${REINPLACE_CMD} -e 's|lib/Marpa/Support.pod|lib/Marpa/HTML/Support.pod|' ${WRKSRC}/Build.PL

.include <bsd.port.mk>
