# Created by: Antonio Carlos Venancio Junior (<antonio@inf.ufsc.br>)
# $FreeBSD: misc/pear-Text_Figlet/Makefile 314265 2013-03-15 07:06:07Z miwi $

PORTNAME=	Text_Figlet
PORTVERSION=	1.0.2
CATEGORIES=	misc www pear

MAINTAINER=	miwi@FreeBSD.org
COMMENT=	Render text using FIGlet fonts

BUILD_DEPENDS=	${PEARDIR}/PEAR.php:${PORTSDIR}/devel/pear
RUN_DEPENDS=	${PEARDIR}/PEAR.php:${PORTSDIR}/devel/pear

PEAR_AUTOINSTALL=	yes

.include <bsd.port.pre.mk>
.include "${PORTSDIR}/devel/pear/bsd.pear.mk"
.include <bsd.port.post.mk>
