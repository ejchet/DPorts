# Created by: Mario S F Ferreira <lioux@linf.unb.br>
# $FreeBSD: ports/mail/qmail-tls/Makefile,v 1.29 2013/02/23 19:42:18 svnexp Exp $

PORTNAME=	qmail
PORTVERSION=	${QMAIL_VERSION}.${TLS_PATCH_DATE}
PORTREVISION=	6
CATEGORIES=	mail
PKGNAMESUFFIX=	-tls

COMMENT=	Secure, reliable, and fast MTA for UNIX systems with TLS support

CONFLICTS=	qmail-[0-9]* qmail-ldap-[0-9]* qmail-mysql-[0-9]* qmail-spamcontrol-[0-9]*

SLAVE_TLS=	yes

TLS_PATCH_DATE=	20021228

USE_OPENSSL=	yes

# Local overrides
MASTERDIR=	${.CURDIR}/../qmail
DESCR=		${.CURDIR}/pkg-descr
LATEST_LINK=	${PKGNAMEPREFIX}${PORTNAME}${PKGNAMESUFFIX}

.include "${MASTERDIR}/Makefile"
