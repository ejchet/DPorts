# Ports collection makefile for:  pear-File_Gettext
# Date created:			  01 December 2004
# Whom:				  Antonio Carlos Venancio Junior (<antonio@inf.ufsc.br>)
#
# $FreeBSD: ports/sysutils/pear-File_Gettext/Makefile,v 1.11 2012/11/17 06:01:41 svnexp Exp $
#

PORTNAME=	File_Gettext
PORTVERSION=	0.4.2
CATEGORIES=	sysutils devel pear

MAINTAINER=	miwi@FreeBSD.org
COMMENT=	PEAR GNU Gettext file parser

BUILD_DEPENDS=	${PEARDIR}/PEAR.php:${PORTSDIR}/devel/pear
RUN_DEPENDS:=	${PEARDIR}/PEAR.php:${PORTSDIR}/devel/pear

USE_PHP=	yes

PEAR_AUTOINSTALL=	yes

.include <bsd.port.pre.mk>
.include "${PORTSDIR}/devel/pear/bsd.pear.mk"
.include <bsd.port.post.mk>
