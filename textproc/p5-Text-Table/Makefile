# Created by: Autrijus Tang <autrijus@autrijus.org>
# $FreeBSD: textproc/p5-Text-Table/Makefile 320403 2013-06-09 19:25:14Z miwi $

PORTNAME=	Text-Table
PORTVERSION=	1.127
CATEGORIES=	textproc perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	miwi@FreeBSD.org
COMMENT=	Organize Data in Tables

BUILD_DEPENDS=	p5-Text-Aligner>=0.05:${PORTSDIR}/textproc/p5-Text-Aligner
RUN_DEPENDS=	p5-Text-Aligner>=0.05:${PORTSDIR}/textproc/p5-Text-Aligner

PERL_CONFIGURE=	yes

MAN3=		Text::Table.3

.include <bsd.port.mk>
