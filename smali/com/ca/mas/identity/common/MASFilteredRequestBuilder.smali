.class public interface abstract Lcom/ca/mas/identity/common/MASFilteredRequestBuilder;
.super Ljava/lang/Object;
.source "MASFilteredRequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$SortOrder;,
        Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Logical;,
        Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;
    }
.end annotation


# static fields
.field public static final SORT_BY:Ljava/lang/String; = "sortBy=%s"

.field public static final SORT_ORDER:Ljava/lang/String; = "sortOrder=%s"


# virtual methods
.method public abstract contains(Ljava/lang/String;Ljava/lang/String;)Lcom/ca/mas/identity/common/MASFilteredRequestBuilder;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract createCompoundExpression(Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Logical;Lcom/ca/mas/foundation/MASRequest;Lcom/ca/mas/foundation/MASRequest;)Lcom/ca/mas/identity/common/MASFilteredRequestBuilder;
.end method

.method public abstract createUri(Landroid/content/Context;)Landroid/net/Uri;
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract endsWith(Ljava/lang/String;Ljava/lang/String;)Lcom/ca/mas/identity/common/MASFilteredRequestBuilder;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract isEqualTo(Ljava/lang/String;Ljava/lang/String;)Lcom/ca/mas/identity/common/MASFilteredRequestBuilder;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract isGreaterThan(Ljava/lang/String;Ljava/lang/String;)Lcom/ca/mas/identity/common/MASFilteredRequestBuilder;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract isGreaterThanOrEqual(Ljava/lang/String;Ljava/lang/String;)Lcom/ca/mas/identity/common/MASFilteredRequestBuilder;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract isLessThan(Ljava/lang/String;Ljava/lang/String;)Lcom/ca/mas/identity/common/MASFilteredRequestBuilder;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract isLessThanOrEqual(Ljava/lang/String;Ljava/lang/String;)Lcom/ca/mas/identity/common/MASFilteredRequestBuilder;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract isNotEqualTo(Ljava/lang/String;Ljava/lang/String;)Lcom/ca/mas/identity/common/MASFilteredRequestBuilder;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract isPresent(Ljava/lang/String;)Lcom/ca/mas/identity/common/MASFilteredRequestBuilder;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setAttributes(Ljava/util/List;)Lcom/ca/mas/identity/common/MASFilteredRequestBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/ca/mas/identity/common/MASFilteredRequestBuilder;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/messaging/MASMessageException;
        }
    .end annotation
.end method

.method public abstract setExcludedAttributes(Ljava/util/List;)Lcom/ca/mas/identity/common/MASFilteredRequestBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/ca/mas/identity/common/MASFilteredRequestBuilder;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/messaging/MASMessageException;
        }
    .end annotation
.end method

.method public abstract setPagination(II)Lcom/ca/mas/identity/common/MASFilteredRequestBuilder;
.end method

.method public abstract setSortOrder(Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$SortOrder;Ljava/lang/String;)Lcom/ca/mas/identity/common/MASFilteredRequestBuilder;
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract startsWith(Ljava/lang/String;Ljava/lang/String;)Lcom/ca/mas/identity/common/MASFilteredRequestBuilder;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
