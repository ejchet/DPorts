# Created by: Andrew Pantyukhin <infofarmer@FreeBSD.org>
# $FreeBSD: audio/fdmf/Makefile 324181 2013-08-03 08:45:51Z az $

PORTNAME=	fdmf
DISTVERSION=	0.0.9s
PORTREVISION=	4
CATEGORIES=	audio
MASTER_SITES=	http://w140.com/audio/ CENKES

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Find similar music by perceptual hashing

LIB_DEPENDS=	gdbm.4:${PORTSDIR}/databases/gdbm \
		plot.4:${PORTSDIR}/graphics/plotutils \
		fftw3:${PORTSDIR}/math/fftw3
RUN_DEPENDS=	mplayer:${PORTSDIR}/multimedia/mplayer \
		mpg123:${PORTSDIR}/audio/mpg123 \
		ogg123:${PORTSDIR}/audio/vorbis-tools \
		p5-GDBM>=0:${PORTSDIR}/databases/p5-GDBM

USES=		perl5
CFLAGS=		-I${LOCALBASE}/include -L. -L${LOCALBASE}/lib
MAKE_ENV=	VPATH=common
PORTDOCS=	README
BINS=		sonic_reducer vector_pairs
SCRS=		${PORTNAME} ${PORTNAME}_bench cleanup_dups optparam
PLIST_FILES=	${BINS:S,^,bin/,} ${SCRS:S,^,bin/,}

post-patch:
	@${REINPLACE_CMD} -Ee '/^(CFLAGS|CC) =/s|.*||' -e 's|common/||g' ${WRKSRC}/Makefile

do-install:
	@${INSTALL_PROGRAM} ${BINS:S,^,${WRKSRC}/,} ${PREFIX}/bin/
	@${INSTALL_SCRIPT} ${SCRS:S,^,${WRKSRC}/,} ${PREFIX}/bin/
.ifndef NOPORTDOCS
	@${INSTALL} -d ${DOCSDIR}/
	@${INSTALL_DATA} ${PORTDOCS:S,^,${WRKSRC}/,} ${DOCSDIR}/
.endif

.include <bsd.port.mk>
