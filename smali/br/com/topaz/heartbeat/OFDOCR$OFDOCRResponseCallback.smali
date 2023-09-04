.class public interface abstract Lbr/com/topaz/heartbeat/OFDOCR$OFDOCRResponseCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbr/com/topaz/heartbeat/OFDOCR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OFDOCRResponseCallback"
.end annotation


# virtual methods
.method public abstract onFailure(I)V
.end method

.method public abstract onProgress(I)V
.end method

.method public abstract onSuccess(ILjava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
