# Created by: Alexander Botero-Lowry <alexbl@FreeBSD.org>
# $FreeBSD: audio/p5-xmms2/Makefile 324039 2013-07-31 12:16:16Z madpilot $

PORTREVISION=	1
CATEGORIES=	audio perl5
PKGNAMEPREFIX=	p5-

MAINTAINER=	madpilot@FreeBSD.org
COMMENT=	Perl Bindings for XMMS2

LIB_DEPENDS+=	xmmsclient.6:${PORTSDIR}/audio/xmms2

MASTERDIR=	${.CURDIR}/../xmms2

USES=		perl5

PLIST=		${.CURDIR}/pkg-plist

XMMS2_SLAVE=	perl

.include "${MASTERDIR}/Makefile"
