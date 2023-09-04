.class public final Lio/sentry/Baggage$DSCKeys;
.super Ljava/lang/Object;
.source "Baggage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/Baggage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DSCKeys"
.end annotation

.annotation build Lorg/jetbrains/annotations/ApiStatus$Internal;
.end annotation


# static fields
.field public static final ENVIRONMENT:Ljava/lang/String; = "sentry-environment"

.field public static final PUBLIC_KEY:Ljava/lang/String; = "sentry-public_key"

.field public static final RELEASE:Ljava/lang/String; = "sentry-release"

.field public static final SAMPLE_RATE:Ljava/lang/String; = "sentry-sample_rate"

.field public static final TRACE_ID:Ljava/lang/String; = "sentry-trace_id"

.field public static final TRANSACTION:Ljava/lang/String; = "sentry-transaction"

.field public static final USER_ID:Ljava/lang/String; = "sentry-user_id"

.field public static final USER_SEGMENT:Ljava/lang/String; = "sentry-user_segment"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
