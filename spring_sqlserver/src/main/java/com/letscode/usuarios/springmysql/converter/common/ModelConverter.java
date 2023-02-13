package com.letscode.usuarios.springmysql.converter.common;

import java.util.ArrayList;
import java.util.Collection;

public interface ModelConverter<Q, M, S> {
    M requestToModel(Q request);

    S modelToResponse(M model);

    default Collection<S> modelToResponse(final Iterable<M> models) {
        assert models != null;
        final Collection<S> responses = new ArrayList<S>();
        models.forEach(model -> responses.add(modelToResponse(model)));

        return responses;
    }
}
