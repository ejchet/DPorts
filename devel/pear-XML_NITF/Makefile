# Created by: Antonio Carlos Venancio Junior (<antonio@inf.ufsc.br>)
# $FreeBSD: devel/pear-XML_NITF/Makefile 318044 2013-05-13 09:49:11Z miwi $

PORTNAME=	XML_NITF
PORTVERSION=	1.1.1
CATEGORIES=	devel pear

MAINTAINER=	miwi@FreeBSD.org
COMMENT=	PEAR NITF XML parser

BUILD_DEPENDS=	${PEARDIR}/XML/Parser.php:${PORTSDIR}/devel/pear-XML_Parser
RUN_DEPENDS=	${PEARDIR}/XML/Parser.php:${PORTSDIR}/devel/pear-XML_Parser

PEAR_AUTOINSTALL=	yes

.include <bsd.port.pre.mk>
.include "${PORTSDIR}/devel/pear/bsd.pear.mk"
.include <bsd.port.post.mk>
