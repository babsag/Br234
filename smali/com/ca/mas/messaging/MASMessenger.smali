.class public interface abstract Lcom/ca/mas/messaging/MASMessenger;
.super Ljava/lang/Object;
.source "MASMessenger.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# virtual methods
.method public abstract sendMessage(Lcom/ca/mas/messaging/MASMessage;Lcom/ca/mas/foundation/MASGroup;Lcom/ca/mas/foundation/MASCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ca/mas/messaging/MASMessage;",
            "Lcom/ca/mas/foundation/MASGroup;",
            "Lcom/ca/mas/foundation/MASCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract sendMessage(Lcom/ca/mas/messaging/MASMessage;Lcom/ca/mas/foundation/MASGroup;Ljava/lang/String;Lcom/ca/mas/foundation/MASCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ca/mas/messaging/MASMessage;",
            "Lcom/ca/mas/foundation/MASGroup;",
            "Ljava/lang/String;",
            "Lcom/ca/mas/foundation/MASCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract sendMessage(Lcom/ca/mas/messaging/MASMessage;Lcom/ca/mas/foundation/MASUser;Lcom/ca/mas/foundation/MASCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ca/mas/messaging/MASMessage;",
            "Lcom/ca/mas/foundation/MASUser;",
            "Lcom/ca/mas/foundation/MASCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract sendMessage(Lcom/ca/mas/messaging/MASMessage;Lcom/ca/mas/foundation/MASUser;Ljava/lang/String;Lcom/ca/mas/foundation/MASCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ca/mas/messaging/MASMessage;",
            "Lcom/ca/mas/foundation/MASUser;",
            "Ljava/lang/String;",
            "Lcom/ca/mas/foundation/MASCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract sendMessage(Lcom/ca/mas/messaging/topic/MASTopic;Lcom/ca/mas/messaging/MASMessage;Lcom/ca/mas/foundation/MASCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ca/mas/messaging/topic/MASTopic;",
            "Lcom/ca/mas/messaging/MASMessage;",
            "Lcom/ca/mas/foundation/MASCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract startListeningToMyMessages(Lcom/ca/mas/foundation/MASCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ca/mas/foundation/MASCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract stopListeningToMyMessages(Lcom/ca/mas/foundation/MASCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ca/mas/foundation/MASCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method
