# New ports collection makefile for:	perlconsole
# Date created:				9 October 2007
# Whom:					Philippe Audeoud <jadawin@tuxaco.net>
#
# $FreeBSD: ports/devel/perlconsole/Makefile,v 1.9 2012/11/17 05:56:41 svnexp Exp $
#

PORTNAME=	perlconsole
PORTVERSION=	0.4
PORTREVISION=	1
CATEGORIES=	devel
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:SUKRIA

MAINTAINER=	jadawin@FreeBSD.org
COMMENT=	A light program that lets you evaluate Perl code interactively

RUN_DEPENDS=	p5-ReadLine-Gnu>=0:${PORTSDIR}/devel/p5-ReadLine-Gnu \
		p5-Module-Refresh>=0:${PORTSDIR}/devel/p5-Module-Refresh \
		p5-Lexical-Persistence>=0:${PORTSDIR}/devel/p5-Lexical-Persistence \
		p5-B-Keywords>=0:${PORTSDIR}/devel/p5-B-Keywords

USE_PERL5=	yes
PERL_CONFIGURE=	yes

PORTDOCS=	README \
		AUTHORS \
		CHANGES

PLIST_FILES=	bin/perlconsole \
		${SITE_PERL_REL}/PerlConsole/Commands.pm \
		${SITE_PERL_REL}/PerlConsole/Console.pm \
		${SITE_PERL_REL}/PerlConsole/Preferences.pm \
		${SITE_PERL_REL}/PerlConsole.pm

PLIST_DIRS=	${SITE_PERL_REL}/PerlConsole

do-install:
.if !defined(NOPORTDOCS)
	${MKDIR} ${DOCSDIR}
.for i in README AUTHORS CHANGES
	${INSTALL_DATA} ${WRKSRC}/${i} ${DOCSDIR}
.endfor
.endif
	${MKDIR} ${PREFIX}/${SITE_PERL_REL}/PerlConsole/
	${CP} -R ${WRKSRC}/lib/PerlConsole/ \
		${PREFIX}/${SITE_PERL_REL}/PerlConsole/
	${CP} ${WRKSRC}/lib/PerlConsole.pm \
		${PREFIX}/${SITE_PERL_REL}/PerlConsole.pm
	${INSTALL_SCRIPT} ${WRKSRC}/${PORTNAME} ${PREFIX}/bin/

.include <bsd.port.mk>
