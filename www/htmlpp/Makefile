# Created by: Donald Burr <dburr@FreeBSD.org>
# $FreeBSD: www/htmlpp/Makefile 324180 2013-08-03 07:52:55Z az $

PORTNAME=	htmlpp
PORTVERSION=	4.2a
CATEGORIES=	www
MASTER_SITES=	http://legacy.imatix.com/pub/tools/
DISTNAME=	htmlp42a
EXTRACT_SUFX=	.tgz

MAINTAINER=	ports@FreeBSD.org
COMMENT=	A Perl script to allow easy creation of HTML from template files

USES=		perl5

NO_WRKSUBDIR=	yes

do-build:
	${SED} -e '1,1s:/usr/bin/perl:${PERL5}:' \
		${WRKDIR}/htmlpp > ${WRKDIR}/htmlpp.temp
	${RM} -f ${WRKDIR}/htmlpp
	${MV} ${WRKDIR}/htmlpp.temp ${WRKDIR}/htmlpp

do-install:
	${MKDIR} ${PREFIX}/${SITE_PERL_REL}
	${INSTALL_SCRIPT} ${WRKDIR}/htmlpp ${PREFIX}/bin/htmlpp
	${INSTALL_DATA} ${WRKDIR}/htmlpp.d ${PREFIX}/${SITE_PERL_REL}/htmlpp.d
	(cd ${WRKDIR}; for FILE in *.pl; do ${INSTALL_DATA} $${FILE} ${PREFIX}/${SITE_PERL_REL}/$${FILE}; done)
	(cd ${WRKDIR}; for FILE in *.def; do ${INSTALL_DATA} $${FILE} ${PREFIX}/bin/$${FILE}; done)
	${INSTALL_DATA} ${WRKDIR}/guru_opt.fmt ${PREFIX}/bin/guru.fmt
	(cd ${WRKDIR}; ${MKDIR} ${PREFIX}/share/doc/htmlpp; for FILE in *.htm; do ${INSTALL_DATA} $${FILE} ${PREFIX}/share/doc/htmlpp/$${FILE}; done)
	(cd ${WRKDIR}; for FILE in *.gif; do ${INSTALL_DATA} $${FILE} ${PREFIX}/share/doc/htmlpp/$${FILE}; done)
	(cd ${WRKDIR}; for FILE in *.txt; do ${INSTALL_DATA} $${FILE} ${PREFIX}/share/doc/htmlpp/$${FILE}; done)

.include <bsd.port.mk>
