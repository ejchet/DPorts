# Created by: Lars Thegler <lth@FreeBSD.org>
# $FreeBSD: textproc/p5-Text-ASCIITable/Makefile 324352 2013-08-07 13:20:32Z az $

PORTNAME=	Text-ASCIITable
PORTVERSION=	0.20
CATEGORIES=	textproc perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	lth@FreeBSD.org
COMMENT=	Create a nice formatted table using ASCII characters

USES=		perl5
USE_PERL5=	configure

MAN3=	Text::ASCIITable.3 \
	Text::ASCIITable::Wrap.3

post-extract:
	@${MKDIR} ${WRKSRC}/example
	@${MV} ${WRKSRC}/ansi-example.pl ${WRKSRC}/example
	@${REINPLACE_CMD} -i '' '/ansi-example.pl/d' ${WRKSRC}/MANIFEST

post-install:
.if !defined(NOPORTDOCS)
	@${MKDIR} ${EXAMPLESDIR}
	@${INSTALL_SCRIPT} ${WRKSRC}/example/ansi-example.pl ${EXAMPLESDIR}
	@${ECHO_MSG} "===> Example installed in ${EXAMPLESDIR}."
.endif

regression-test: build
	cd ${WRKSRC}/ && ./Build test

.include <bsd.port.mk>
