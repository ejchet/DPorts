# $FreeBSD: mail/chk4mail/Makefile 320835 2013-06-13 19:56:33Z johans $

PORTNAME=	chk4mail
PORTVERSION=	2.27
CATEGORIES=	mail
MASTER_SITES=	ftp://ftp.stack.nl/pub/users/johans/chk4mail/ \
		ftp://mud.stack.nl/pub/chk4mail/

MAINTAINER=	johans@FreeBSD.org
COMMENT=	A utility to quickly check multiple folders for new email

PLIST_FILES=	bin/chk4mail bin/chkimap

MAN1=		chk4mail.1 chkimap.1

GNU_CONFIGURE=	yes
CONFIGURE_ARGS+=	--with-imap

.include <bsd.port.mk>
