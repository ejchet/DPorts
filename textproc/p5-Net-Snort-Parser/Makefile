# Created by: Ryan Steinmetz <zi@FreeBSD.org>
# $FreeBSD: textproc/p5-Net-Snort-Parser/Makefile 324174 2013-08-02 18:52:07Z mat $

PORTNAME=	Net-Snort-Parser
PORTVERSION=	1.41
CATEGORIES=	textproc perl5
MASTER_SITES=	https://projects.honeynet.org/svn/honeywall/honeywall/trunk/rpm-devel/perl-${PORTNAME}/ \
    		http://mirrors.rit.edu/zi/
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Perl modules for parsing Snort configuration files

USES=		perl5
USE_PERL5=	configure

MAN1=		snortconfig.1
MAN3=		Net::Snort::Parser::File.3 Net::Snort::Parser::Rule.3

.include <bsd.port.mk>
