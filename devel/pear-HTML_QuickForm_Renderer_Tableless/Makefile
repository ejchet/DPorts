# Created by: Chris St Denis <chris@smartt.com>
# $FreeBSD: devel/pear-HTML_QuickForm_Renderer_Tableless/Makefile 318095 2013-05-13 14:38:31Z miwi $

PORTNAME=	HTML_QuickForm_Renderer_Tableless
PORTVERSION=	0.6.1
CATEGORIES=	devel www pear

MAINTAINER=	chris@smartt.com
COMMENT=	Implementation of Tableless Renderer for HTML_QuickForm

BUILD_DEPENDS=	${PEARDIR}/HTML/QuickForm.php:${PORTSDIR}/devel/pear-HTML_QuickForm
RUN_DEPENDS=	${PEARDIR}/HTML/QuickForm.php:${PORTSDIR}/devel/pear-HTML_QuickForm

PEAR_AUTOINSTALL=	yes

.include <bsd.port.pre.mk>
.include "${PORTSDIR}/devel/pear/bsd.pear.mk"
.include <bsd.port.post.mk>
