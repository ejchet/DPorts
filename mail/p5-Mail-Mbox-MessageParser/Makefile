# Created by: Cheng-Lung Sung <clsung@dragon2.net>
# $FreeBSD: mail/p5-Mail-Mbox-MessageParser/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	Mail-Mbox-MessageParser
PORTVERSION=	1.5002
PORTREVISION=	1
CATEGORIES=	mail perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Fast and simple mbox folder reader

BUILD_DEPENDS=	p5-Text-Diff>=0:${PORTSDIR}/textproc/p5-Text-Diff \
		p5-FileHandle-Unget>=0:${PORTSDIR}/devel/p5-FileHandle-Unget
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure
CONFIGURE_ARGS+=	</dev/null

MAN3=		Mail::Mbox::MessageParser.3 \
		Mail::Mbox::MessageParser::Cache.3 \
		Mail::Mbox::MessageParser::Grep.3 \
		Mail::Mbox::MessageParser::Perl.3 \
		Mail::Mbox::MessageParser::MetaInfo.3

.include <bsd.port.mk>
