# Created by: Clement Laforet <sheepkiller@cultdeadsheep.org>
# $FreeBSD: dns/p5-DNS-Zone/Makefile 324007 2013-07-31 06:54:09Z az $

PORTNAME=	DNS-Zone
PORTVERSION=	0.85
PORTREVISION=	0
CATEGORIES=	dns perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	ports@FreeBSD.org
COMMENT=	DNS::Zone is set of perl modules for name service zone files

USES=		perl5
USE_PERL5=	configure patch

post-patch:
	${FIND} ${WRKSRC} -name '*.pm' -o -name '*.t' -o -name '*.PL' | \
	${XARGS} ${PERL} -pi -e '$$_="" if /^use 5/;' \
			     -e '$$_="" if /(use|no) warnings/;'

post-install:
.if !defined(NOPORTDOCS)
	@${MKDIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${DOCSDIR}
.endif

.include <bsd.port.mk>
