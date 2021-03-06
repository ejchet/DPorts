# Created by: Matthew Condell (mcondell@alum.mit.edu)
# $FreeBSD: devel/g-wrap/Makefile 316333 2013-04-23 10:13:19Z bapt $
#    $MCom: ports/devel/g-wrap/Makefile,v 1.6 2006/12/24 18:45:08 ahze Exp $

PORTNAME=	g-wrap
PORTVERSION=	1.9.6
PORTREVISION=	6
PORTEPOCH=	1
CATEGORIES=	devel scheme
MASTER_SITES=	SAVANNAH

MAINTAINER=	gnome@FreeBSD.org
COMMENT=	Tool for exporting C libraries into Scheme interpreters

BUILD_DEPENDS=	guile>=1.8.6:${PORTSDIR}/lang/guile \
		slib-guile>0:${PORTSDIR}/lang/slib-guile
RUN_DEPENDS=	guile>=1.8.6:${PORTSDIR}/lang/guile \
		slib-guile>0:${PORTSDIR}/lang/slib-guile

INFO=		g-wrap

USES=		pkgconfig
USE_LDCONFIG=	yes
GNU_CONFIGURE=	yes
CONFIGURE_TARGET=${ARCH:S/amd64/x86_64/}-portbld-freebsd${OSREL}
USE_GMAKE=	yes
USE_GNOME=	glib20 gnomehack
NOT_FOR_ARCHS=	ia64 powerpc

CFLAGS+=		-fPIC
CONFIGURE_ARGS=		--disable-Werror

post-patch:
	@${REINPLACE_CMD} -e 's|echo aout|echo elf|g' ${WRKSRC}/configure
	@${REINPLACE_CMD} -e 's|"glib"|"glib-2.0"|g ; \
		s|SRFI_34=yes|SRFI_34=no|g ; s|SRFI_35=yes|SRFI_35=no|g' \
			${WRKSRC}/configure
	@${FIND} ${WRKSRC} -name "Makefile.in" | ${XARGS} ${REINPLACE_CMD} -e \
		's|(GUILE_CFLAGS) $$(LIBFFI_CFLAGS)|(LIBFFI_CFLAGS) $$(GUILE_CFLAGS)|g'

pre-install:
	@${REINPLACE_CMD} -e 's|libffi||' ${WRKSRC}/${MAKEFILE}

post-install:
	${MKDIR} ${PREFIX}/include/g-wrap/ffi
.for f in ffi.h ffitarget.h
	${INSTALL_DATA} ${WRKSRC}/libffi/include/${f} \
		${PREFIX}/include/g-wrap/ffi
.endfor

.include <bsd.port.mk>
