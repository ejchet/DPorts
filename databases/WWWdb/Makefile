# New ports collection makefile for:	WWWdb
# Date created:		Wed Nov 20 11:37:33 CET 2002
# Whom:			Jens Rehsack <rehsack@liwing.de>
#
# $FreeBSD: databases/WWWdb/Makefile 324171 2013-08-02 18:21:05Z az $
#

PORTNAME=	WWWdb
PORTVERSION=	0.8.3
CATEGORIES=	databases perl5 www
MASTER_SITES=	SF/${PORTNAME:tl}/${PORTNAME}/${PORTVERSION}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	A Perl based generic WWW DB interface / frontend

USES=		perl5
USE_PERL5=	configure

MAN3=		WWWdb::Base.3 WWWdb::DbSession.3 WWWdb::List.3 \
		WWWdb::Session.3 WWWdb::Plugin.3 WWWdb::Hash.3 \
		WWWdb::HTML.3 WWWdb::ConfigFile.3 WWWdb::ConfigPool.3

.include <bsd.port.mk>
