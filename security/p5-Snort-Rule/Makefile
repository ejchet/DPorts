# ports collection makefile for:	perl extension for dynamically building snort rules
# Date created:				30 January 2008
# Whom:					Paul Schmehl <pauls@utdallas.edu>
#
# $FreeBSD: ports/security/p5-Snort-Rule/Makefile,v 1.5 2012/11/17 06:01:13 svnexp Exp $
#

PORTNAME=	Snort-Rule
PORTVERSION=	1.07
CATEGORIES=	security perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:SAXJAZMAN/Snort
PKGNAMEPREFIX=	p5-

MAINTAINER=	pauls@utdallas.edu
COMMENT=	Perl5 extension for dynamically building snort rules

PERL_CONFIGURE=	yes

PLIST_FILES=	%%SITE_PERL%%/Snort/Rule.pm \
		%%SITE_PERL%%/mach/auto/Snort/Rule/.packlist
PLIST_DIRS=	%%SITE_PERL%%/mach/auto/Snort/Rule \
		%%SITE_PERL%%/mach/auto/Snort \
		%%SITE_PERL%%/Snort

MAN3=		Snort::Rule.3

.include <bsd.port.mk>
