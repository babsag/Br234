.class public interface abstract annotation Lorg/checkerframework/common/value/qual/IntRangeFromPositive;
.super Ljava/lang/Object;
.source "IntRangeFromPositive.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {}
.end annotation

.annotation runtime Lorg/checkerframework/framework/qual/SubtypeOf;
    value = {
        Lorg/checkerframework/common/value/qual/UnknownVal;
    }
.end annotation
