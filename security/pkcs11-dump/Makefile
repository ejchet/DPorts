# New ports collection makefile for:	pkcs11-dump
# Date created:			4 Apr 2011
# Whom:				Alex Dupre <ale@FreeBSD.org>
#
# $FreeBSD: ports/security/pkcs11-dump/Makefile,v 1.2 2012/11/17 06:01:15 svnexp Exp $
#

PORTNAME=	pkcs11-dump
PORTVERSION=	0.3.4
CATEGORIES=	security
MASTER_SITES=	${MASTER_SITE_GOOGLE_CODE}

MAINTAINER=	ale@FreeBSD.org
COMMENT=	Allow dumping PKCS\#11 token content

PROJECTHOST=	pkcs11-tools

USE_BZIP2=	yes
USE_OPENSSL=	yes
GNU_CONFIGURE=	yes

CONFIGURE_ENV=	OPENSSL_CFLAGS="-I${OPENSSLINC}" \
		OPENSSL_LIBS="-L${OPENSSLLIB} -lssl"

PLIST_FILES=	bin/pkcs11-dump

MAN1=		pkcs11-dump.1

post-patch:
	@${REINPLACE_CMD} 's|install-data-am: install-dist_docDATA|install-data-am:|' \
		${WRKSRC}/Makefile.in

.include <bsd.port.mk>
