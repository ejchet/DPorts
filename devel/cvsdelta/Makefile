# ex:ts=8
# Ports collection makefile for:  cvsdelta
# Date created:                   Thu Jul 25, 2002
# Whom:                           Michael L. Hostbaek (mich@freebsdcluster.org)
#
# $FreeBSD: ports/devel/cvsdelta/Makefile,v 1.22 2012/11/17 05:55:39 svnexp Exp $
#

PORTNAME=	cvsdelta
PORTVERSION=	1.7.0
CATEGORIES=	devel
MASTER_SITES=	http://belnet.dl.sourceforge.net/sourceforge/cvsdelta/ \
		SF		


MAINTAINER=	mich@FreeBSD.org
COMMENT=	Cvsdelta summarizes differences between local and in-cvs files

USE_RUBY=	yes
NO_BUILD=	yes

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/${PORTNAME} ${PREFIX}/bin/${PORTNAME}
	${INSTALL_MAN} ${WRKSRC}/cvsdelta.1 ${PREFIX}/man/man1/

MAN1=		cvsdelta.1
PLIST_FILES=	bin/cvsdelta

.include <bsd.port.mk>
