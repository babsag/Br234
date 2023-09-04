.class public interface abstract Lcom/ca/mas/core/datasource/DataSource;
.super Ljava/lang/Object;
.source "DataSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract get(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TT;"
        }
    .end annotation
.end method

.method public abstract get(Ljava/lang/Object;Lcom/ca/mas/core/datasource/DataSourceCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/ca/mas/core/datasource/DataSourceCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract getKeys(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "TK;>;"
        }
    .end annotation
.end method

.method public abstract getKeys(Ljava/lang/Object;Lcom/ca/mas/core/datasource/DataSourceCallback;)V
.end method

.method public abstract isReady()Z
.end method

.method public abstract put(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TT;)V"
        }
    .end annotation
.end method

.method public abstract put(Ljava/lang/Object;Ljava/lang/Object;Lcom/ca/mas/core/datasource/DataSourceCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TT;",
            "Lcom/ca/mas/core/datasource/DataSourceCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract remove(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation
.end method

.method public abstract remove(Ljava/lang/Object;Lcom/ca/mas/core/datasource/DataSourceCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/ca/mas/core/datasource/DataSourceCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract removeAll(Ljava/lang/Object;)V
.end method

.method public abstract removeAll(Ljava/lang/Object;Lcom/ca/mas/core/datasource/DataSourceCallback;)V
.end method

.method public abstract unlock()V
.end method
