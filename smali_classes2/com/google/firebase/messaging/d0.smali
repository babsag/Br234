.class final synthetic Lcom/google/firebase/messaging/d0;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-messaging@@21.1.0"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# instance fields
.field private final a:Lcom/google/firebase/messaging/e0;


# direct methods
.method constructor <init>(Lcom/google/firebase/messaging/e0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/d0;->a:Lcom/google/firebase/messaging/e0;

    return-void
.end method


# virtual methods
.method public then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/messaging/d0;->a:Lcom/google/firebase/messaging/e0;

    invoke-virtual {v0, p1}, Lcom/google/firebase/messaging/e0;->h(Lcom/google/android/gms/tasks/Task;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
