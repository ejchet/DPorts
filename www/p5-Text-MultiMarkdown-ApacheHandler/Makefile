# Created by: Ryan Steinmetz <zi@FreeBSD.org>
# $FreeBSD: www/p5-Text-MultiMarkdown-ApacheHandler/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	Text-MultiMarkdown-ApacheHandler
PORTVERSION=	0.01
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Module for processing files with MultiMarkdown syntax for Apache

BUILD_DEPENDS=	p5-Text-MultiMarkdown>=0:${PORTSDIR}/textproc/p5-Text-MultiMarkdown \
    		p5-Text-Typography>=0:${PORTSDIR}/textproc/p5-Text-Typography \
		${APACHE_PKGNAMEPREFIX}mod_perl2>=2.0.5:${PORTSDIR}/www/mod_perl2
RUN_DEPENDS:=	${BUILD_DEPENDS}

USE_APACHE_RUN=	22+
USES=		perl5
USE_PERL5=	configure
SUB_FILES=	pkg-message

MAN3=		Text::MultiMarkdown::ApacheHandler.3

post-patch:
	@${RM} ${WRKSRC}/lib/Text/MultiMarkdown/ApacheHandler.pm.orig

post-install:
	@${CAT} ${PKGMESSAGE}

.include <bsd.port.mk>
