## New ports collection makefile for:	kshowmail
# Date created:			Sat Oct 18 14:01:21 CEST 2003
# Whom:				Markus Brueffer <brueffer@phoenix-systems.de>
#
# $FreeBSD: mail/kshowmail/Makefile 324191 2013-08-03 13:44:00Z mat $

PORTNAME=	kshowmail
PORTVERSION=	4.1
PORTREVISION=	1
CATEGORIES=	mail kde
MASTER_SITES=	SF/${PORTNAME}/${PORTNAME}%20for%20KDE4/${PORTVERSION}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	POP3 mail checker for KDE

LICENSE=	GPLv2

USE_KDE4=	automoc4 kdehier kdeprefix kdelibs pimlibs
USE_QT4=	corelib dbus gui network svg xml \
		qmake_build uic_build rcc_build
USE_PERL5=	build
USES=		cmake gettext perl5

.include <bsd.port.mk>
