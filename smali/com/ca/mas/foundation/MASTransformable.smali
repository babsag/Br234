.class public interface abstract Lcom/ca/mas/foundation/MASTransformable;
.super Ljava/lang/Object;
.source "MASTransformable.java"


# virtual methods
.method public abstract getAsJSONObject()Lorg/json/JSONObject;
    .annotation runtime Lcom/ca/mas/foundation/Internal;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method public abstract populate(Lorg/json/JSONObject;)V
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Lcom/ca/mas/foundation/Internal;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method
