# New ports collection makefile for:	p5-Email-Folder
# Date created:				August 31 2003
# Whom:					Lars Thegler <lars@thegler.dk>
#
# $FreeBSD: mail/p5-Email-Folder/Makefile 324352 2013-08-07 13:20:32Z az $
#

PORTNAME=	Email-Folder
PORTVERSION=	0.85.5
CATEGORIES=	mail perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-
DISTNAME=	${PORTNAME}-${PORTVERSION:R}${PORTVERSION:E}

MAINTAINER=	lth@FreeBSD.org
COMMENT=	Read all the messages from a folder as Email::Simple objects

RUN_DEPENDS=	p5-Email-Simple>0:${PORTSDIR}/mail/p5-Email-Simple \
		p5-Email-FolderType>=0.6:${PORTSDIR}/mail/p5-Email-FolderType
BUILD_DEPENDS:=	${RUN_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=		Email::Folder.3 \
		Email::Folder::MH.3 \
		Email::Folder::Maildir.3 \
		Email::Folder::Mbox.3 \
		Email::Folder::Reader.3

.include <bsd.port.mk>
