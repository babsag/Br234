.class final synthetic Lcom/google/android/gms/cloudmessaging/f;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cloud-messaging@@16.0.0"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private final a:Lcom/google/android/gms/cloudmessaging/c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cloudmessaging/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cloudmessaging/f;->a:Lcom/google/android/gms/cloudmessaging/c;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/f;->a:Lcom/google/android/gms/cloudmessaging/c;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/cloudmessaging/c;->d(Landroid/os/Message;)Z

    move-result p1

    return p1
.end method
