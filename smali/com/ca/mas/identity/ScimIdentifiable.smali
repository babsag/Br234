.class public interface abstract Lcom/ca/mas/identity/ScimIdentifiable;
.super Ljava/lang/Object;
.source "ScimIdentifiable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ca/mas/identity/ScimIdentifiable$ResourceType;
    }
.end annotation


# virtual methods
.method public abstract getCardinality()J
.end method

.method public abstract getDisplayName()Ljava/lang/String;
.end method

.method public abstract getExternalId()Ljava/lang/String;
.end method

.method public abstract getId()Ljava/lang/String;
.end method
