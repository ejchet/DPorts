# Created by: Nick Hilliard <nick@foobar.org>
# $FreeBSD: ports/www/pear-Structures_DataGrid_Renderer_Flexy/Makefile,v 1.4 2013/02/03 19:32:11 svnexp Exp $

PORTNAME=	Structures_DataGrid_Renderer_Flexy
PORTVERSION=	0.1.4
CATEGORIES=	www pear

MAINTAINER=	miwi@FreeBSD.org
COMMENT=	Renderer for pear-Structures_DataGrid using HTML_Template_Flexy

BUILD_DEPENDS=	${PEARDIR}/PEAR.php:${PORTSDIR}/devel/pear
RUN_DEPENDS=	${PEARDIR}/Structures/DataGrid.php:${PORTSDIR}/devel/pear-Structures_DataGrid \
		${PEARDIR}/HTML/Template/Flexy.php:${PORTSDIR}/devel/pear-HTML_Template_Flexy \
		${PEARDIR}/Structures/DataGrid/Renderer/Pager.php:${PORTSDIR}/www/pear-Structures_DataGrid_Renderer_Pager

PEAR_AUTOINSTALL=	yes

.include <bsd.port.pre.mk>
.include "${PORTSDIR}/devel/pear/bsd.pear.mk"
.include <bsd.port.post.mk>
