.class public interface abstract Lcom/ca/mas/messaging/MASPayload;
.super Ljava/lang/Object;
.source "MASPayload.java"


# virtual methods
.method public abstract createJSONStringFromMASMessage(Landroid/content/Context;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/messaging/MASMessageException;
        }
    .end annotation
.end method

.method public abstract createMASMessageFromJSONString(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ca/mas/messaging/MASMessageException;
        }
    .end annotation
.end method

.method public abstract getContentEncoding()Ljava/lang/String;
.end method

.method public abstract getContentType()Ljava/lang/String;
.end method

.method public abstract getDisplayName()Ljava/lang/String;
.end method

.method public abstract getPayload()[B
.end method

.method public abstract getSenderId()Ljava/lang/String;
.end method

.method public abstract getSenderType()Ljava/lang/String;
.end method

.method public abstract getSentTime()J
.end method

.method public abstract getVersion()Ljava/lang/String;
.end method

.method public abstract setContentEncoding(Ljava/lang/String;)V
.end method

.method public abstract setContentType(Ljava/lang/String;)V
.end method

.method public abstract setPayload([B)V
.end method

.method public abstract setSenderId(Ljava/lang/String;)V
.end method

.method public abstract setSenderType(Ljava/lang/String;)V
.end method

.method public abstract setSentTime(J)V
.end method

.method public abstract setVersion(Ljava/lang/String;)V
.end method
