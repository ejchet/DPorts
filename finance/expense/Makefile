# $FreeBSD: ports/finance/expense/Makefile,v 1.10 2013/02/03 22:03:11 svnexp Exp $

PORTNAME=	expense
PORTVERSION=	0.1
PORTREVISION=	2
CATEGORIES=	finance gnustep
MASTER_SITES=	http://www.eskimo.com/~pburns/Expense/files/
DISTNAME=	Expense-${PORTVERSION}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Application to track your expense under GNUstep

LICENSE=	GPLv2

USE_GNUSTEP=	yes
USE_GNUSTEP_BACK=	yes
USE_GNUSTEP_BUILD=	yes
USE_GNUSTEP_INSTALL=	yes

WRKSRC=		${WRKDIR}/Expense

PORTSCOUT=	ignore:1

.include <bsd.port.mk>
