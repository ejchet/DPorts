# Created by: Kurt Jaeger <fbsd-ports@opsec.eu>
# $FreeBSD: devel/p5-String-Dump/Makefile 316936 2013-04-30 14:43:25Z jadawin $

PORTNAME=	String-Dump
PORTVERSION=	0.09
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:PATCH
PKGNAMEPREFIX=	p5-

MAINTAINER=	fbsd-ports@opsec.eu
COMMENT=	Dump strings of characters or bytes for printing and debugging

BUILD_DEPENDS=	p5-Getopt-Lucid>=0:${PORTSDIR}/textproc/p5-Getopt-Lucid

PERL_MODBUILD=	yes

MAN1=	dumpstr.1
MAN3=	String::Dump.3 String::Dump::Debugging.3

.include <bsd.port.mk>
