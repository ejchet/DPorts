# New ports collection makefile for:	p5-File-Rsync
# Date created:				20 May 2001
# Whom:					petef@FreeBSD.org
#
# $FreeBSD: net/p5-File-Rsync/Makefile 324171 2013-08-02 18:21:05Z az $
#

PORTNAME=	File-Rsync
PORTVERSION=	0.43
CATEGORIES=	net perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Perl convenience wrapper for the rsync(1) program

RUN_DEPENDS=	rsync:${PORTSDIR}/net/rsync
BUILD_DEPENDS:=	${RUN_DEPENDS}

USES=		perl5
USE_PERL5=	configure

MAN3=		File::Rsync.3

.include <bsd.port.mk>
