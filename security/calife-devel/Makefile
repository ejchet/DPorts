# Created by: Thomas Quinot <thomas@cuivre.fr.eu.org>
# $FreeBSD: security/calife-devel/Makefile 315566 2013-03-29 19:33:41Z cs $
#

PORTNAME=	calife
PORTVERSION=	3.0.1
CATEGORIES=	security
MASTER_SITES=	http://assets.keltia.net/calife/
DISTNAME=	calife-3.0.1

MAKE_JOBS_SAFE=yes
MAINTAINER=	thomas@FreeBSD.org
COMMENT=	Lightweight alternative to sudo

LATEST_LINK=	${PORTNAME}-devel

USE_BZIP2=	yes

GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--with-etcdir=${PREFIX}/etc

CONFIGURE_ARGS+=	--with-pam

CONFLICTS?=	calife-2.*

MAN1=		calife.1
MAN5=		calife.auth.5

post-install:
	@${INSTALL_DATA} ${WRKSRC}/pam/freebsd5 ${PREFIX}/etc/pam.d/calife.sample
	@${CAT} ${PKGMESSAGE}

.include <bsd.port.mk>
